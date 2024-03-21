class ChatService {
    public synchronized void sendMessage(String sender, String message) {
        try {
            // Simulate the time taken to send a message
            Thread.sleep(500);
            System.out.println(sender + " sends: " + message);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public synchronized void receiveMessage(String receiver, String message) {
        try {
            // Simulate the time taken to receive a message
            Thread.sleep(500);
            System.out.println(receiver + " receives: " + message);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

class User implements Runnable {
    private String name;
    private ChatService chatService;

    public User(String name, ChatService chatService) {
        this.name = name;
        this.chatService = chatService;
    }

    @Override
    public void run() {
        for (int i = 1; i <= 5; i++) { // Sending and receiving 5 messages
            chatService.sendMessage(name, "Message " + i);
            chatService.receiveMessage(name, "Reply " + i);
        }
    }
}

public class ChatApplication {
    public static void main(String[] args) {
        ChatService chatService = new ChatService();

        // Create multiple threads representing different users
        Thread userThreadA = new Thread(new User("UserA", chatService));
        Thread userThreadB = new Thread(new User("UserB", chatService));

        // Start the threads
        userThreadA.start();
        userThreadB.start();

        try {
            // Wait for threads to finish
            userThreadA.join();
            userThreadB.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

}
